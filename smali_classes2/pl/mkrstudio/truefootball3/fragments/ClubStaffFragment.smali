.class public Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;
.super Landroidx/fragment/app/Fragment;
.source "ClubStaffFragment.java"


# instance fields
.field employeeAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

.field employeeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/enums/EmployeeType;",
            ">;"
        }
    .end annotation
.end field

.field employeesAndPeopleToHireVF:Landroid/widget/ViewFlipper;

.field leftButton:Landroid/widget/Button;

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

.field okButton:Landroid/widget/Button;

.field peopleToHireAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

.field rightButton:Landroid/widget/Button;

.field roleArrowLeft:Landroid/widget/Button;

.field roleArrowRight:Landroid/widget/Button;

.field roleSpinner:Landroid/widget/Spinner;

.field showedParameter1:I

.field showedParameter2:I

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->showedParameter1:I

    .line 49
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->showedParameter2:I

    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 326
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 336
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 331
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 341
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initClubStaffList(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getAllEmployees()Ljava/util/List;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tf3Settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "currencyModifier"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 181
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v5, "currencyName"

    const-string v6, "EUR"

    .line 182
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 185
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v9, "age"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v9, "experience"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "nation"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    int-to-long v8, v8

    invoke-static {v8, v9, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "salary"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v6

    const-string v8, "role"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const v2, 0x7f08016e

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 199
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->showedParameter1:I

    invoke-direct {v3, v5, v4, v0, v6}, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    const/4 v0, 0x1

    .line 200
    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;->setNotifyOnChange(Z)V

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;

    invoke-direct {v0, p0, v1, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method initPeopleToHireList(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "tf3Settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "currencyModifier"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 231
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v4, "currencyName"

    const-string v5, "EUR"

    .line 232
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$7;

    invoke-direct {v5, p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 250
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v7

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 251
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v9, "age"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v9, "experience"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "nation"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v8, v8, v2

    float-to-int v8, v8

    int-to-long v8, v8

    invoke-static {v8, v9, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "salary"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v8

    const-string v9, "role"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f080271

    .line 264
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 266
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->showedParameter2:I

    invoke-direct {v2, v5, v3, v0, v6}, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->peopleToHireAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    const/4 v0, 0x1

    .line 267
    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;->setNotifyOnChange(Z)V

    .line 268
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->peopleToHireAdapter:Lpl/mkrstudio/truefootball3/adapters/EmployeeAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;

    invoke-direct {v0, p0, v4, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initClubStaffList(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->showHeader(Landroid/view/View;I)V

    const v1, 0x7f08016d

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeesAndPeopleToHireVF:Landroid/widget/ViewFlipper;

    const v1, 0x7f08005f

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    const v1, 0x7f080067

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->leftButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$1;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->rightButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$2;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->disableLeftButton()V

    .line 113
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->enableRightButton()V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    .line 116
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->employeeTypes:Ljava/util/List;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0802db

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleSpinner:Landroid/widget/Spinner;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0327

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0678

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c055d

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0234

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c04b5

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c03c5

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 134
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 136
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f080061

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleArrowLeft:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleArrowRight:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleArrowLeft:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->roleArrowRight:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080259

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->okButton:Landroid/widget/Button;

    .line 164
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 347
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 349
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 351
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnMenuButtonClickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a0066

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 70
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "whichView"
        }
    .end annotation

    const v0, 0x7f08016c

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801aa

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c04b3

    .line 318
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/16 p2, 0x8

    .line 319
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c01bd

    .line 300
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 301
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$9;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/ClubStaffFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
