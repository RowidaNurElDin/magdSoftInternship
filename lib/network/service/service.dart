import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:seyana_tech/network/requests/LoginRequest.dart';
import 'package:seyana_tech/network/responses/LoginResponse.dart';
part 'service.g.dart';

@RestApi()
abstract class RestClient{
  factory RestClient(Dio dio) = _RestClient;

  @POST('https://khaled-cars.magdsoft.com/api/login')
  Future<LoginResponse> login(
      @Body() LoginRequest loginRequest,
      );


}