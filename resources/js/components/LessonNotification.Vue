<template>
    <li class="nav-item dropdown">
        <a href="#" id="navbarDropdown" class="nav-link dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-globe"></i> Notification <span class="badge badge-danger" id="count-notification">{{ lessons.length }}</span><span class="caret"></span>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a href="#" class="dropdown-item" @click = "markAsRead(lesson)" v-for="lesson in lessons">
                {{lesson.data['lesson']['title']}} <b>{{ lesson.created_at | myOwnTime }}</b> 
            </a>
            <div class="dropdown-divider" v-if="lessons.length!=0"></div>
            <a href="#" class="dropdown-item" @click="allMarkAsRead" v-if="lessons.length != 0">
                Mark all as read
            </a>
            <a href="#" class="dropdown-item" v-if="lessons.length == 0">
                No Notification
            </a>
        </div>
    </li>
</template>
<script>
	export default {
		props: ['lessons'],
		methods:{
			markAsRead:function(lesson){
				var data = {
					not_id: lesson.id,
					lesson_id : lesson.data.lesson.id
				};
				axios.post("/markAsRead",data).then(response =>{
					window.location.href = "/readLesson/" + data.lesson_id;
				});
			},
			allMarkAsRead:function(){
				axios.post('/allMarkAsRead').then(response =>{
					window.location.href = "/readAllLesson";
				});
			}
		}
	};
</script>