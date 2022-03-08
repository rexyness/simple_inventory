import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_inventory/core/constants.dart';
import 'package:simple_inventory/core/failure.dart';
import 'package:simple_inventory/core/widgets/primary_button.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';
import 'package:simple_inventory/providers/add_user_provider.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/providers/states/add_new_user_state.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';
import 'package:group_button/group_button.dart';
import '../../../../theme/palette.dart';

class AddUser extends HookConsumerWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final nameController = useTextEditingController(text: '');
    final emailController = useTextEditingController(text: '');
    final confirmEmailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final confirmPasswordController = useTextEditingController(text: '');
    final userRole = useState(role.staff);
    final isObscure = useState(true);

    return ScaffoldGradient(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create a new user'),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: Palette.backgroundGradient,
            ),
          ),
          child: Scaffold(
            body: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Form(
                      key: formKey,
                      child: ResponsiveRowColumn(
                        columnMainAxisAlignment: MainAxisAlignment.center,
                        columnCrossAxisAlignment: CrossAxisAlignment.center,
                        columnPadding: const EdgeInsets.all(30),
                        columnSpacing: kListItemSpacing,
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          // ResponsiveRowColumnItem(
                          //   child: Image.asset('assets/images/logo.png'),
                          // ),
                          ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                key: const ValueKey('nameFormField'),
                                textInputAction: TextInputAction.next,
                                validator: ValidationBuilder().required().build(),
                                controller: nameController,
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  labelText: 'Full Name',
                                  errorStyle: TextStyle(
                                    overflow: TextOverflow.visible,
                                    inherit: true,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                              child: TextFormField(
                                key: const ValueKey('emailFormField'),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                validator: ValidationBuilder().email().build(),
                                controller: emailController,
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  labelText: 'Email',
                                  errorStyle: TextStyle(
                                    overflow: TextOverflow.visible,
                                    inherit: true,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                              child: TextFormField(
                                key: const ValueKey('confrimEmailFormField'),
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                controller: confirmEmailController,
                                validator: (_) {
                                  if (confirmEmailController.value.text.trim() != emailController.value.text.trim()) {
                                    return 'Email mismatch';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  labelText: 'Confirm Email',
                                  errorStyle: TextStyle(
                                    overflow: TextOverflow.visible,
                                    inherit: true,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                              child: TextFormField(
                                key: const ValueKey('passwordFormField'),
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                                controller: passwordController,
                                obscureText: isObscure.value,
                                validator: ValidationBuilder().required().build(),
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(isObscure.value ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      isObscure.value = !isObscure.value;
                                    },
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                              child: TextFormField(
                                key: const ValueKey('passwordFormField'),
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                controller: confirmPasswordController,
                                obscureText: isObscure.value,
                                validator: (_) {
                                  if (confirmPasswordController.value.text != passwordController.value.text) {
                                    return 'Password Mismatch';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                                  labelText: 'Confirm Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(isObscure.value ? Icons.visibility : Icons.visibility_off),
                                    onPressed: () {
                                      isObscure.value = !isObscure.value;
                                    },
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          const ResponsiveRowColumnItem(
                            child: SizedBox(
                              width: double.infinity,
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: GroupButton(
                              isRadio: true,
                              onSelected: (index, isSelected) {
                                if (index == 0) userRole.value = role.supervisor;
                                if (index == 1) userRole.value = role.staff;
                              },
                              buttons: const ["Supervisor", "Staff"],
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: PrimaryButton(
                              onPressed: () async {
                                FocusManager.instance.primaryFocus?.unfocus();
                                // Validate returns true if the form is valid, or false otherwise.
                                if (formKey.currentState!.validate()) {
                                  try {
                                    ref.read(addUserProvider.state).state = const AddNewUserState.loading();
                                    await ref.read(databaseProvider)!.addNewUser(
                                          emailController.value.text.trim(),
                                          passwordController.value.text.trim(),
                                          nameController.value.text.trim(),
                                          userRole.value,
                                        );
                                    ref.read(addUserProvider.state).state = const AddNewUserState.sucess();
                                    await ref.read(authProvider.notifier).logout();
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  } on Failure catch (e) {
                                    ref.read(addUserProvider.state).state = AddNewUserState.failed(reason: e.message);
                                  }
                                }
                              },
                              isLoading: ref.watch(addUserProvider).maybeWhen(orElse: () {
                                return false;
                              }, loading: () {
                                return true;
                              }),
                              text: 'Confirm',
                              width: ResponsiveValue(
                                context,
                                defaultValue: double.infinity,
                                valueWhen: const [
                                  Condition.smallerThan(
                                    name: MOBILE,
                                    value: double.infinity,
                                  ),
                                  Condition.largerThan(
                                    name: TABLET,
                                    value: 500,
                                  )
                                ],
                              ).value!.toDouble(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
