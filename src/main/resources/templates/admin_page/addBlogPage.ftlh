<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListBlogs">
    <#if message??>
        <script>
            alert('${message?string}')
        </script>
    </#if>
    <div class="content-wrapper">
        <div class="row">
            <div class="col-6 grid-margin stretch-card" style="margin: 0 auto;">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Add new blog</h4>
                        <p class="card-description">
                            Add new blog
                        </p>
                        <form class="forms-sample" action="/admin/addblog" method="post">
                            <div class="form-group">
                                <label for="exampleInputName1">Title</label>
                                <input   pattern="^[a-zA-Z0-9]+$"
                                         title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" name="title" type="text" class="form-control" id="exampleInputName1" placeholder="Title">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPrice">Author</label>
                                <input title="Введите только текст и цифры" pattern="^[a-zA-Z0-9]+$" minlength="5" maxlength="45" required="required" name="author" type="text" class="form-control" id="exampleInputPrice" placeholder="Author">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhotoUrl">Photo url</label>
                                <input title="Введите только текст и цифры" pattern="^[a-zA-Z0-9]+$" minlength="5"  required="required" name="photo_url" type="text" class="form-control" id="exampleInputPhotoUrl" placeholder="PhotoUrl">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Category</label>
                                <select required="required" name="category" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <#list blogCategory as cat>
                                        <option value="${cat.id}">${cat.name}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleTextarea1">Text</label>
                                <textarea title="Введите только текст и цифры" pattern="^[a-zA-Z0-9]+$" required="required" minlength="15" maxlength="512" name="text" class="form-control" id="exampleTextarea1" rows="4"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <a href="/admin/listblog" class="btn btn-light">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@commonPage.page>