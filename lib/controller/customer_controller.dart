import 'package:vendite_dart/model/customer.dart';
import 'package:vendite_dart/vendite_dart.dart';

class CustomersController  extends ResourceController{

  final ManagedContext context;

  CustomersController(this.context);

  // GET /customers
  @Operation.get()
  Future<Response> getCustomers() async {
    final query = Query<Customer>(context)..join(set: (customer) => customer.purchases);
    return Response.ok(await query.fetch());
  }

  @Operation.get("id")
  Future<Response> getCustomer(@Bind.path("id") int id) async {
    final query = Query<Customer>(context)
      ..where((customer) => customer.id).equalTo(id);
  }
  
}