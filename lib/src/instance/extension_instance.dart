import 'package:get/src/typedefs/typedefs.dart';
import '../get_main.dart';
import 'get_instance.dart';

extension Inst on GetImpl {
  void lazyPut<S>(FcBuilderFunc builder, {String tag, bool fenix = false}) {
    return GetInstance().lazyPut<S>(builder, tag: tag, fenix: fenix);
  }

  Future<S> putAsync<S>(FcBuilderFuncAsync<S> builder,
          {String tag, bool permanent = false}) async =>
      GetInstance().putAsync<S>(builder, tag: tag, permanent: permanent);

  void create<S>(FcBuilderFunc<S> builder,
          {String name, bool permanent = true}) =>
      GetInstance().create<S>(builder, name: name, permanent: permanent);

  S find<S>({String tag, FcBuilderFunc<S> instance}) =>
      GetInstance().find<S>(tag: tag, instance: instance);

  S put<S>(S dependency,
          {String tag,
          bool permanent = false,
          bool overrideAbstract = false,
          FcBuilderFunc<S> builder}) =>
      GetInstance().put<S>(dependency,
          tag: tag,
          permanent: permanent,
          overrideAbstract: overrideAbstract,
          builder: builder);

  bool reset({bool clearFactory = true, bool clearRouteBindings = true}) =>
      GetInstance().reset(
          clearFactory: clearFactory, clearRouteBindings: clearRouteBindings);

  /// Delete class instance on [S] and clean memory
  Future<bool> delete<S>({String tag, String key}) async =>
      GetInstance().delete<S>(tag: tag, key: key);

  bool isRegistred<S>({String tag}) => GetInstance().isRegistred<S>(tag: tag);
}
