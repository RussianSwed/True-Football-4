.class Lpl/mkrstudio/truefootball3/views/ValuePicker$16;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 470
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    iput p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$maxEmployees:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    if-nez p2, :cond_2

    .line 475
    :try_start_0
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 477
    :cond_0
    iget v4, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$maxEmployees:I

    int-to-long v5, v4

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    add-int/lit8 v4, v4, -0x1

    int-to-long v2, v4

    .line 478
    :cond_1
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v9, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v11, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget v12, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$maxEmployees:I

    invoke-static/range {v5 .. v12}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v14, v13, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadiumEmployeeType:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$stadium:Lpl/mkrstudio/truefootball3/objects/Stadium;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$fragment:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget v6, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$maxEmployees:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-static/range {v13 .. v20}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    .line 482
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->val$et:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v4, v4, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
