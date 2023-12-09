<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListUser">
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
                        <h4 class="card-title">Edit user</h4>
                        <p class="card-description">
                            Edit user with id - ${idUser}
                        </p>
                        <form class="forms-sample" action="/admin/edituser/${idUser}" method="post">
                            <div class="form-group">
                                <label for="exampleInputName1">Name</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" value="${userEdit.name}" name="name" type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Soname</label>
                                <input pattern="^[a-zA-Z0-9]+$"
                                       title="Введите только текст и цифры" minlength="5" maxlength="45" required="required" value="${userEdit.soname}" name="soname" type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Role</label>
                                <select required="required" name="status" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <#list status as st>
                                        <option <#if userEdit.status.name()==st.name()>selected</#if> value="${st.name()}">${st.name()}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Role</label>
                                <select required="required" name="role" required="required" class="form-control form-control-lg" id="exampleFormControlSelect1">
                                    <#list roles as role>
                                        <option <#if userEdit.userRole.name()==role.name()>selected</#if> value="${role.name()}">${role.name()}</option>
                                    </#list>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <a href="/admin/listuser" class="btn btn-light">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@commonPage.page>