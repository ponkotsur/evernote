class NotesController < ApplicationController
  def index
    @evernote = EvernoteUtils.new
    @title = params[:id]
    @guid = @evernote.searchNotebook(@title)
    @notes = @evernote.searchNoteWithGuid(@guid)
  end
end
