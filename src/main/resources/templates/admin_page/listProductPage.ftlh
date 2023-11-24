<#import "components/commonAdminComponent.ftlh" as commonPage>
<@commonPage.page pageName="ListProduct">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">List of product
                            <a href="addnewproduct.html" style="float: right;" type="button" class="btn btn-primary">+</a>
                        </h4>
                        <p class="card-description">
                            All product in shop
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
                                        Description
                                    </th>
                                    <th>
                                        Photo
                                    </th>
                                    <th>
                                        Weight
                                    </th>
                                    <th>
                                        Price
                                    </th>
                                    <th>
                                        Count
                                    </th>
                                    <th>
                                        Count Of Buy
                                    </th>
                                    <th>
                                        Category
                                    </th>
                                    <th>
                                        Status
                                    </th>
                                    <th>
                                        Date create
                                    </th>
                                    <th>
                                        Edit
                                    </th>
                                    <th>
                                        Delete
                                    </th>
                                    <th>
                                        List of reviews
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <#if listProducts?? && listProducts?size gt 0>
                                    <#list listProducts as product>
                                    <tr>
                                        <td>
                                            ${product.id}
                                        </td>
                                        <td>
                                            ${product.name}
                                        </td>
                                        <td>
                                            ${product.description}
                                        </td>
                                        <td class="py-1">
                                            <img src="${product.photoUrl}"/>
                                        </td>
                                        <td>
                                            ${product.weight}
                                        </td>
                                        <td>
                                            ${product.price}
                                        </td>
                                        <td>
                                            ${product.count}
                                        </td>
                                        <td>
                                            ${product.countOfBuy}
                                        </td>
                                        <td>
                                            ${product.categoryProduct.name}
                                        </td>
                                        <td>
                                            ${product.status}
                                        </td>
                                        <td>
                                            ${product.dateCreate}
                                        </td>
                                        <td>
                                            <a href="editproduct.html" type="button" class="btn btn-primary">
                                                <i class="mdi mdi-pencil"></i>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="addnewproduct.html" type="button" class="btn btn-primary">
                                                <i class="mdi mdi-bitbucket"></i>
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
                                        <td>Product doesn't exists.</td>
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