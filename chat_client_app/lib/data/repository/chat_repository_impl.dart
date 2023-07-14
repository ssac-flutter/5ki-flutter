import 'package:chat_client_app/data/data_source/chat_api.dart';
import 'package:chat_client_app/domain/model/message.dart';
import 'package:chat_client_app/domain/repository/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final _api = ChatApi();

  @override
  Stream<Message> getMessageStream() {
    return _api
        .getMessageStream()
        .map((messageJson) => Message.fromJson(messageJson));
  }

  @override
  void sendMessage(Message message) {
    _api.sendMessage(message.toJson());
  }
}
