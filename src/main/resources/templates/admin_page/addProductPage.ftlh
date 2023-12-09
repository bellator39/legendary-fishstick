<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListProduct">
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
                        <h4 class="card-title">Add new product</h4>
                        <p class="card-description">
                            Add new Product
                        </p>
                        <form class="forms-sample" action="/admin/addproduct" method="post">
                            <div class="form-group">
                                <label for="exampleInputName1">Name</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" name="name" type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPrice">Price</label>
                                <input pattern="^\d+(,\d{3})*(,\d{2})?$" required="required"
                                       title="Введите числовое значение, разделяя тысячи запятой и используя две цифры после запятой"
                                       name="price" type="text" class="form-control" id="exampleInputPrice" placeholder="Price">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputWeight">Weight</label>
                                <input pattern="^\d+(,\d{3})*(,\d{2})?$" required="required"
                                       title="Введите числовое значение, разделяя тысячи запятой и используя две цифры после запятой"
                                         name="weight" type="text" class="form-control" id="exampleInputWeight" placeholder="Weight">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCount">Count</label>
                                <input min="1" max="999" required="required" name="count" type="number" class="form-control" id="exampleInputCount" placeholder="Count">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhotoUrl">Photo url</label>
                                <input
                                     title="Введите только текст и цифры" minlength="5" required="required" name="photo_url" type="text" class="form-control" id="exampleInputPhotoUrl" placeholder="PhotoUrl">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Category</label>
                                <select required="required name="category" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <#list listCategory as cat>
                                        <option value="${cat.id}">${cat.name}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleTextarea1">Textarea</label>
                                <textarea required="required" minlength="15" maxlength="513" name="description" class="form-control" id="exampleTextarea1" rows="4"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <a href="/admin/listproduct" class="btn btn-light">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@commonPage.page>