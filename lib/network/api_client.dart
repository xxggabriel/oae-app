import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'package:oea_app/network/api_response.dart';
import 'package:oea_app/network/message_response.dart';

import 'package:http_parser/http_parser.dart';
import 'package:oea_app/network/responses/doctor_calendar_response.dart';
import 'package:oea_app/network/responses/doctor_schedule_response.dart';
import 'package:oea_app/network/responses/doctor_service_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

// BUSCA DE DADOS
  @GET("/api/busca-cep.php")
  Future<ApiResponse<AddressModel>> searchAddress({@Query("cep") String cep = ""});

  @GET("/api/planos.php")
  Future<ApiResponse<List<HealthPlanModel>>> fetchHealthPlans();

  @GET("/api/especialidades.php")
  Future<ApiResponse<List<SpecialityModel>>> fetchSpecialities();

  @GET("/api/profissoes.php")
  Future<ApiResponse<List<OccupationModel>>> fetchOccupations();

  @GET("/api/busca-cidades.php")
  Future<ApiResponse<List<CityModel>>> findCities(@Query("uf_id") int ufId);

// AUTENTICACAO

  @POST("/api/user/login.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<UserModel>> login(@Field() String cpf, @Field("senha") String password);

  @GET("/api/user/user.php")
  Future<ApiResponse<UserModel>> pingUser();

  @POST("/api/user/recuperar-senha.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> recoverPassword(@Field() String cpf);

  // REGISTRO

  @Headers({"Content-Type": "application/json"})
  @POST("/api/user/checa-cpf.php")
  Future<ApiResponse<CpfResultModel>> cpfCheck(@Field() String cpf);

  @POST("/api/user/register.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<UserModel>> register(@Body() Map<String, dynamic> user);

  @POST("/api/user/cpf-questions.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<IdentityQuestions>> cpfQuestions(@Field() String cpf);

  @POST("/api/user/valida-questions.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<IdentityValidationResult>> validateQuestions(@Body() Map<String, dynamic> data);

  // Profile

  @GET("/api/user/user.php")
  Future<ApiResponse<UserModel>> profile();

  @POST("/api/user/user.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> updateProfile(@Body() Map<String, dynamic> user);

  @POST("/api/user/user-image.php")
  @MultiPart()
  Future<ApiResponse<MessageResponse>> updateUserImage(
      @Part(contentType: 'application/json', name: "myPhoto") File image);

  @POST("/api/user/user-password.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> updatePassword(
    @Field("password") String password,
    @Field("password_confirmation") String passwordConfirmation,
  );

  // Tela Inicial

  @CacheControl(noCache: true)
  @GET("/api/user/home.php")
  Future<ApiResponse<HomeDataModel>> homeData();

  @GET("/api/user/nuvemTags.php")
  Future<ApiResponse<List<SpecialityModel>>> specialitiesCloud();

  @GET("/api/user/medicosRecomendados.php")
  Future<ApiResponse<List<DoctorModel>>> recomendations();

  @GET("/api/user/medicosProximos.php")
  Future<ApiResponse<HomeDataModel>> doctorsNearby(
    @Query("latitude") double latitude,
    @Query("longitude") double longitude,
  );

  // Exames

  @GET("/api/user/meusExames.php")
  Future<ApiResponse<List<ExamModel>>> fetchExams({@Query("filtro") String q = ""});

  @GET("/api/user/exame.php")
  Future<ApiResponse<ExamModel>> fetchExam(@Query("exame_id") int id);

  @GET("/api/user/geraExame.php")
  Future<ApiResponse<ExamModel>> generateExam(@Query("id_integracao") int id);

  // Medicos

  @GET("/api/user/buscaMedicos.php")
  Future<ApiResponse<List<DoctorModel>>> search({@Query("filtro") String q = ""});

  @GET("/api/user/medico.php")
  Future<ApiResponse<DoctorModel>> fetchDoctor(@Query("medico_id") int id);

  // Farmacias

  @GET("/api/drogarias.php")
  Future<ApiResponse<List<DrugstoreModel>>> fetchDrugstores({
    @Query("filtro") String q = "",
    @Query("filtro") double? latitude,
    @Query("filtro") double? longitude,
  });

  @GET("/api/drogaria.php")
  Future<ApiResponse<DrugstoreModel>> fetchDrugstore(@Query("id_drogaria") int id);

  // Consultas

  @GET("/api/user/minhasConsultas.php")
  Future<ApiResponse<List<AppointmentModel>>> fetchAppointments({@Query("nome") String q = ""});

  @GET("/api/user/consulta.php")
  Future<ApiResponse<AppointmentModel>> fetchAppointment(@Query("id_consulta") int id);

  @POST("/api/user/confirmar-consulta.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> confirmAppointment(@Field("id_consulta") int id);

  @POST("/api/user/avaliar-medico.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> evaluateDoctor(@Body() Map<String, dynamic> testimony);

  @GET("/api/user/consulta-prescricao.php")
  Future<ApiResponse<List<PrescriptionModel>>> fetchPrescriptions(@Query("id_consulta") int id);

  @GET("/api/user/consulta-atestado.php")
  Future<ApiResponse<List<MedicalCertificateModel>>> fetchMedicalCertificate(@Query("id_consulta") int id);

  // Perguntas

  @CacheControl(noCache: true)
  @GET("/api/user/minhasPerguntas.php")
  Future<ApiResponse<List<QuestionModel>>> fetchQuestions({@Query("filtro") String q = ""});

  @CacheControl(noCache: true)
  @GET("/api/user/pergunta.php")
  Future<ApiResponse<QuestionModel>> fetchQuestion(@Query("pergunta_id") int id);

  @POST("/api/user/gravaPerguntas.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> createQuestion(
    @Field("especialidade_id") int specialityId,
    @Field("pergunta") String question,
  );

  @POST("/api/user/gravaPerguntaResposta.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<QuestionModel>> answerQuestion(
    @Field("pergunta_id") int questionId,
    @Field("resposta") String answer,
  );

  // Mensagens

  @POST("/api/user/gravaMensagensWhatsapp.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> saveFirstMessage(
    @Field("id_especialista") int doctorId,
    @Field("pergunta") String question,
    @Field("whatsapp") String phone,
  );

  @CacheControl(noCache: true)
  @GET("/api/user/minhasMensagens.php")
  Future<ApiResponse<List<QuestionModel>>> fetchMessages({@Query("filtro") String q = ""});

  @CacheControl(noCache: true)
  @GET("/api/user/mensagem.php")
  Future<ApiResponse<QuestionModel>> fetchMessage(@Query("mensagem_id") int id);

  @POST("/api/user/gravaMensagens.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> createMessage(
    @Field("id_consulta") int appointmentId,
    @Field("pergunta") String question,
  );

  @POST("/api/user/gravaMensagemResposta.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<QuestionModel>> answerMessage(
    @Field("pergunta_id") int messageId,
    @Field("resposta") String answer,
  );

  // Notificações

  @CacheControl(noCache: true)
  @GET("/api/user/minhasNotificacoes.php")
  Future<ApiResponse<List<NotificationModel>>> fetchNotifications();

  @CacheControl(noCache: true)
  @POST("/api/user/notificacao.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> readNotification(@Field("id_evento") int id);

  @POST("/api/user/cadastroDevice.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> registerDevice(
    @Field("external_token") String token,
    @Field("external_token_type") String tokenType,
    @Field("platform") String platform,
    @Field("app_version") String appVersion,
    @Field("system_version") String systemVersion,
  );

  @POST("/api/user/removeDevice.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> unregisterDevice(
    @Field("external_token") String token,
  );

  @CacheControl(noCache: true)
  @POST("/api/user/permitir_negar_exames.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<MessageResponse>> allowDenyExamAccess(@Field("id_evento") int id, @Field("permitir") bool allow);

  // Prescrição Avulsa
  //

  @GET("/api/agendamento/local_atendimento.php")
  Future<ApiResponse<List<LocationModel>>> fetchDoctorLocations(@Query("id_especialista") int doctorId);

  // Prescrição Avulso

  @GET("/api/user/consulta-prescricao-avulsa.php")
  Future<ApiResponse<List<LoosePrescriptionModel>>> fetchLoosePrescriptions(
    @Query("id_atendimento") int attendanceId,
  );

  // Data Geral

  @GET("/api/agendamento/servicos.php")
  Future<ApiResponse<DoctorServiceResponse>> fetchDoctorServicePlans(
    @Query("id_especialista") int doctorId,
    @Query("id_localTrabalho") int locationId,
  );

  @GET("/api/agendamento/calendario.php")
  Future<ApiResponse<DoctorCalendarResponse>> fetchDoctorCalendar(
    @Query("id_especialista") int doctorId,
    @Query("id_localTrabalho") int locationId,
    @Query("id_tipoAtendimento") int serviceId,
    @Query("years") int year,
    @Query("months") int month,
  );

  @GET("/api/agendamento/horarios.php")
  Future<ApiResponse<DoctorScheduleResponse>> fetchDoctorSchedule(
    @Query("id") int doctorId,
    @Query("id_localTrabalho") int locationId,
    @Query("id_tipoAtendimento") int serviceId,
    @Query("day") int day,
    @Query("months") int month,
    @Query("years") int year,
  );

  @POST("/api/agendamento/grava_agendamento.php")
  @Headers({"Content-Type": "application/json"})
  Future<ApiResponse<AppointmentModel>> createAppointment(
    @Body() NewAppointment appointment,
  );
}
