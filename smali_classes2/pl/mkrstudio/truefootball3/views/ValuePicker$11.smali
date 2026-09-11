.class Lpl/mkrstudio/truefootball3/views/ValuePicker$11;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

.field final synthetic val$pickerPositions:[Lpl/mkrstudio/truefootball3/enums/Position;

.field final synthetic val$position:Lpl/mkrstudio/truefootball3/enums/Position;

.field final synthetic val$valuePickers:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;Lpl/mkrstudio/truefootball3/enums/Position;Landroid/widget/EditText;[Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;)V
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
            "val$newFormationDialog",
            "val$position",
            "val$et",
            "val$pickerPositions",
            "val$valuePickers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$position:Lpl/mkrstudio/truefootball3/enums/Position;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$et:Landroid/widget/EditText;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$pickerPositions:[Lpl/mkrstudio/truefootball3/enums/Position;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$valuePickers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 371
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_2

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$position:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v4, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 373
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$position:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->modifyFormation(Lpl/mkrstudio/truefootball3/enums/Position;I)V

    .line 374
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$et:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-wide v2, v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 378
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$pickerPositions:[Lpl/mkrstudio/truefootball3/enums/Position;

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 379
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    aget-object v0, v0, p1

    invoke-virtual {v2, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$valuePickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableLeftButton()V

    goto :goto_1

    .line 380
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$valuePickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 381
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$pickerPositions:[Lpl/mkrstudio/truefootball3/enums/Position;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$valuePickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableRightButton()V

    goto :goto_2

    .line 382
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;->val$valuePickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableRightButton()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
