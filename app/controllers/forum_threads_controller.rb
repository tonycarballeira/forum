class ForumThreadsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_sction :set_forum_thread, except: [:index, :new, :create]