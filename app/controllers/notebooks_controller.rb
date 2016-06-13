require "classes/EvernoteUtils"

class NotebooksController < ApplicationController
  def index
    @notebooks = Notebook.all
  end

  def update_notebooks
    @evernote = EvernoteUtils.new
    @notebooks = @evernote.getNotebooks
    @notebooks.each do |notebook|
      p notebook
      note = Notebook.new
      note.name = notebook.name
      note.save
    end
    redirect_to :action => "index"
  end

  def update_notebook
    @evernote = EvernoteUtils.new
    @name = Notebook.find(params[:id]).name
    @guid = @evernote.searchNotebook(@name)
    @notes = @evernote.getNotes(@guid)
    @notes.each do |note|
      note = Note.new
      
    end
  end

  def show
    @notes = Note.all
  end

end
