<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListUser">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">List of order
                         </h4>
                        <p class="card-description">
                            All order in shop
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
                                        Order notes
                                    </th>
                                    <th>
                                        City
                                    </th>
                                    <th>
                                        Address
                                    </th>
                                    <th>
                                        Total price
                                    </th>
                                    <th>
                                        User order
                                    </th>
                                    <th>
                                        Order Status
                                    </th>
                                    <th>
                                        Date order
                                    </th>
                                    <th>
                                        Edit
                                    </th>
                                    <th>
                                        List of order item
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if listOrder?? && listOrder?size gt 0>
                                    <#list listOrder as order>
                                        <tr>
                                            <td>
                                                ${order.id}
                                            </td>
                                            <td>
                                                ${order.name}
                                            </td>
                                            <td>
                                                ${order.soname}
                                            </td>
                                            <td>
                                                ${order.email}
                                            </td>
                                            <td>
                                                ${order.orderNotes}
                                            </td>
                                            <td>
                                                ${order.city}
                                            </td>
                                            <td>
                                                ${order.street}
                                            </td>
                                            <td>
                                                ${order.totalPrice}
                                            </td>
                                            <td>
                                                ${order.userOrder.id}
                                            </td>
                                                <#if order.status="Pending">
                                                    <td class="font-weight-medium"><div class="badge badge-warning">Pending</div></td>
                                                </#if>
                                                <#if order.status="Completed">
                                                    <td class="font-weight-medium"><div class="badge badge-success">Completed</div></td>
                                                </#if>
                                            <#if order.status="Cancelled">
                                                <td class="font-weight-medium"><div class="badge badge-danger">Cancelled</div></td>
                                            </#if>
                                            <td>
                                                ${order.dateOrder}
                                            </td>
                                            <td>
                                                <a href="/admin/editorder/${order.id}" type="button" class="btn btn-primary">
                                                    <i class="mdi mdi-pencil"></i>
                                                </a>
                                            </td>
                                            <td>
                                                <a href="listofreviewproduct.html" type="button" class="btn btn-primary">
                                                    <i class="mdi mdi-view-list"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </#list>
                                <#else>
                                    <tr>
                                        <td>Orders doesn't exists.</td>
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