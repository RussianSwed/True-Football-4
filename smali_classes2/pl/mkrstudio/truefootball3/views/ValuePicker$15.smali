.class Lpl/mkrstudio/truefootball3/views/ValuePicker$15;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

.field final synthetic val$maxEmployees:I

.field final synthetic val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

.field final synthetic val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;ILpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$et",
            "val$maxEmployees",
            "val$stadiumEmployeeType",
            "val$stadium",
            "val$fragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    iput p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$maxEmployees:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x6

    move/from16 v4, p2

    if-ne v4, v3, :cond_2

    .line 455
    :try_start_0
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    .line 457
    :cond_0
    iget v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$maxEmployees:I

    int-to-long v6, v5

    cmp-long v8, v3, v6

    if-lez v8, :cond_1

    add-int/lit8 v5, v5, -0x1

    int-to-long v3, v5

    .line 458
    :cond_1
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-wide v3, v5, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 460
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v7, v6, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    iget-object v11, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v12, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget v13, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$maxEmployees:I

    invoke-static/range {v6 .. v13}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    iget-object v14, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v3, v14, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget v9, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$maxEmployees:I

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    invoke-static/range {v14 .. v21}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    .line 463
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->val$et:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v5, v5, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return v2
.end method
