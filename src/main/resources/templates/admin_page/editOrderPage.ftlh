<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListOrders">
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
                        <h4 class="card-title">Edit order</h4>
                        <p class="card-description">
                            Edit Order with id - ${orderEdit.id}
                        </p>
                        <form class="forms-sample" action="/admin/editorder/${orderEdit.id}" method="post">
                            <div class="form-group">
                                <label for="exampleInputName1">Name</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" value="${orderEdit.name}" name="name" type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Soname</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" value="${orderEdit.soname}" name="soname" type="text" class="form-control" id="exampleInputName1" placeholder="Soname">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Email</label>
                                <input  required value="${orderEdit.email}" name="email" type="email" class="form-control" id="exampleInputName1" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">City</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="155" required="required" value="${orderEdit.city}" name="city" type="text" class="form-control" id="exampleInputName1" placeholder="City">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Street</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="155" required="required" value="${orderEdit.street}" name="street" type="text" class="form-control" id="exampleInputName1" placeholder="Street">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Status</label>
                                <select required="required" name="status" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <option <#if orderEdit.status=="Cancelled">selected</#if> value="Cancelled">Cancelled</option>
                                    <option <#if orderEdit.status=="Pending">selected</#if> value="Pending">Pending</option>
                                    <option <#if orderEdit.status=="Completed">selected</#if> value="Completed">Completed</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <a href="/admin/listorder" class="btn btn-light">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@commonPage.page>