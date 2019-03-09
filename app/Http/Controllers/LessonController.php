<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\NewLessonNotification;
use App\Lesson;
use App\User;

class LessonController extends Controller
{
    public function __construct(){
    	$this->middleware('auth');
    }

    public function newLesson(){
    	$lesson = new Lesson;
    	$lesson->user_id = auth()->user()->id;
    	$lesson->title = 'Notification One';
    	$lesson->body = 'Notification One Description';
    	$lesson->save();
    	$user = User::where('id','!=',auth()->user()->id)->get();

    	if (\Notification::send($user, new NewLessonNotification(Lesson::latest('id')->first()))) {
    		return back();
    	}
    }

    //get all notification     
    public function notification(){
        return auth()->user()->unreadNotifications;
    }
    //single mark as read
    public function markAsRead(Request $request){
        auth()->user()->unreadNotifications->find($request->not_id)->markAsRead();
    }

    public function readLesson($lesson_id){
        $lesson = Lesson::find([$lesson_id]);
        return view('lesson',compact('lesson'));
    }

    //multiple mark as read
    public function allMarkAsRead(){
        auth()->user()->unreadNotifications->markAsRead();
    }

    public function readAllLesson(){
        $lessons = auth()->user()->readNotifications;
        return view('all_notification', compact('lessons'));
    }
}
