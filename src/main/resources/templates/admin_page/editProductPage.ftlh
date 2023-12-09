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
                        <h4 class="card-title">Edit product</h4>
                        <p class="card-description">
                            Edit Product with name - ${productById.name}
                        </p>
                        <form class="forms-sample" action="/admin/editproduct/${productById.id}" method="post">
                            <div class="form-group">
                                <label for="exampleInputName1">Name</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" value="${productById.name}" name="name" type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPrice">Price</label>
                                <input pattern="^\d+(,\d{3})*(,\d{2})?$" required="required"
                                       title="Введите числовое значение, разделяя тысячи запятой и используя две цифры после запятой" value="${productById.price}" name="price" type="text" class="form-control" id="exampleInputPrice" placeholder="Price">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputWeight">Weight</label>
                                <input pattern="^\d+(,\d{3})*(,\d{2})?$"
                                       title="Введите числовое значение, разделяя тысячи запятой и используя две цифры после запятой" value="${productById.weight}" required="required" name="weight" type="text" class="form-control" id="exampleInputWeight" placeholder="Weight">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCount">Count</label>
                                <input min="1" max="999" value="${productById.count}" required="required" name="count" type="number" class="form-control" id="exampleInputCount" placeholder="Count">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhotoUrl">Photo url</label>
                                <input  minlength="5" value="${productById.photoUrl}" required="required" name="photo_url" type="text" class="form-control" id="exampleInputPhotoUrl" placeholder="PhotoUrl">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Category</label>
                                <select required="required" name="category" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <#list listCategory as cat>
                                        <option <#if productById.categoryProduct.id=cat.id>selected</#if> value="${cat.id}">${cat.name}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleTextarea1">Textarea</label>
                                <textarea required="required" minlength="15" maxlength="513" name="description" class="form-control" id="exampleTextarea1" rows="4">
                                    ${productById.description}
                                </textarea>
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