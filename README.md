https://infinite-reaches-67520.herokuapp.com

Para iniciar lo primero fue crear la página:
rails g controller posts create dashboard index
Luego quise crear el modelo para así tener la convención y sobre eso trabajar, por tanto:
rails g model posts title image_url content (luego hice db:migrate)

Luego en App/view/posts/dashboard cree el formulario que permita ingresar titulo, link a una imagen, y contenido, ademas con usuario y contreña. Luego en /posts/create cree el codigo para error.any? donde se mostrará una página de éxito o los errores.
El siguiente paso es valida la presencia de los atritutos creados en el modelo. Para esto en Model /post.rb con validates.
Luego la autenticación para crear post en Controller posts_controller ya que aquí se define lo que la vista va a mostrar, se debe establecer.
