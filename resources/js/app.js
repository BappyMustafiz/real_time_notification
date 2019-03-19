
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import axios from 'axios'
import Echo from 'laravel-echo'

window.Pusher = require('pusher-js');

window.Echo = new Echo({
    broadcaster: 'pusher',
    key: process.env.MIX_PUSHER_APP_KEY,
    cluster: process.env.MIX_PUSHER_APP_CLUSTER,
    encrypted: true
});


/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('lesson', require('./components/LessonNotification.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
    data: {
    	lessons : '',
    },
    created(){
    	if (window.Laravel.userId) {
    		axios.post('/notification/lesson/notification').then(response =>{
    			this.lessons = response.data;
    			timeAgo();
    			console.log(response.data)
    		});
    		window.Echo.private('App.User.'+ window.Laravel.userId).notification((data) =>{
    			data = {"data":data,'created_at':data.lesson.created_at};
    			this.lessons.push(data);
    			timeAgo();
    		});
    	};

    	function timeAgo(){
    		Vue.filter('myOwnTime', function(value){
    			return moment(value).fromNow();
    		});
    	}
    }
});
