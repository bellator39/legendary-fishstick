<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListUser">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">List of contact
                         </h4>
                        <p class="card-description">
                            All contacts in shop
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
                                        Email
                                    </th>
                                    <th>
                                        Message
                                    </th>
                                    <th>
                                        Date Send
                                    </th>
                                    <th>
                                        Delete
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if listContacts?? && listContacts?size gt 0>
                                    <#list listContacts as contact>
                                        <tr>
                                            <td>
                                                ${contact.id}
                                            </td>
                                            <td>
                                                ${contact.name}
                                            </td>
                                            <td>
                                                ${contact.email}
                                            </td>
                                            <td>
                                                ${contact.message}
                                            </td>
                                            <td>
                                                ${contact.dateSend}
                                            </td>
                                            <td>
                                                <a href="/admin/deletecontact/${contact.id}" type="button" class="btn btn-primary">
                                                    <i class="mdi mdi-bitbucket"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </#list>
                                    <#else>
                                    <tr>
                                        <td>Contacts doesn't exists.</td>
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