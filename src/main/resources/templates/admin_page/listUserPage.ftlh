<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListUser">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">List of users
                         </h4>
                        <p class="card-description">
                            All users in shop
                        </p>


                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>
                                        Id
                                    </th>
                                    <th>
                                        Name
                                    </th>
                                    <th>
                                        Soname
                                    </th>
                                    <th>
                                        Email
                                    </th>
                                    <th>
                                        Count of order
                                    </th>
                                    <th>
                                        Role
                                    </th>
                                    <th>
                                        Date registration
                                    </th>
                                    <th>
                                        Edit
                                    </th>
                                    <th>
                                        Delete
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if listUser?? && listUser?size gt 0>
                                    <#list listUser as user>
                                        <tr>
                                            <td>
                                                ${user.id}
                                            </td>
                                            <td>
                                                ${user.name}
                                            </td>
                                            <td>
                                                ${user.soname}
                                            </td>
                                            <td>
                                                ${user.email}
                                            </td>
                                            <td>
                                                <#if user.orderList??>
                                                    ${user.orderList?size}
                                                    <#else>
                                                    0
                                                </#if>
                                            </td>
                                            <td>
                                                ${user.userRole.name()}
                                            </td>
                                            <td>
                                                ${user.dateRegister}
                                            </td>
                                            <td>
                                                <a href="/admin/edituser/${user.id}" type="button" class="btn btn-primary">
                                                    <i class="mdi mdi-pencil"></i>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="/admin/deleteuser/${user.id}" type="button" class="btn btn-primary">
                                                    <i class="mdi mdi-bitbucket"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </#list>
                                    <#else>
                                    <tr>
                                        <td>Users doesn't exists.</td>
                                    </tr>
                                </#if>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</@commonPage.page>