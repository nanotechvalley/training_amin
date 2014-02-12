class CommentsController < ApplicationController


	def destroy
	  
	end

	def create
		@comment = Comment.new(comment_params)

	<table border = "2" > 

 	<tr>
 		<TD> Content  </td>
 		<TD> Article ID </TD>
 		<TD> User ID </TD>

 	<tr>
		if @comment.save
			flash (:notice) = "Komentar Masuk"

		else
			flash (:error) = "Komentar Gagal"
	    end

		redirect_to_article_path(@comment.article_id)
	end

	def comment_params
		params.require(:comment) .permit(:content, :article_id)

	end

end