# edit action
get '/:id/edit' do 
    puts "[INFO] reached /:id (edit)"
    @book = Book.get params[:id]
    @subhead = "Edit item"
    erb :edit
end

# put (update) action
put '/:id' do 
    b = Book.get params[:id]
    b.type = params[:type]
    b.composer = params[:composer]
    b.composition = params[:composition]
    b.edition = params[:edition]
    b.editor = params[:editor]
    b.purchase_price = params[:price]
    b.updated_at = Time.now.to_date.to_s
    b.save
    redirect '/'
end
