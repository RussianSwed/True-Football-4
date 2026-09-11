.class public Lpl/mkrstudio/truefootball3/objects/Employee;
.super Ljava/lang/Object;
.source "Employee.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x15af69e026c25756L


# instance fields
.field age:B

.field experience:B

.field monthlySalary:J

.field name:Ljava/lang/String;

.field nationality:Lpl/mkrstudio/truefootball3/objects/Country;

.field skill:B

.field type:Lpl/mkrstudio/truefootball3/enums/EmployeeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()B
    .locals 1

    .line 36
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->age:B

    return v0
.end method

.method public getExperience()B
    .locals 1

    .line 42
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->experience:B

    return v0
.end method

.method public getMonthlySalary()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->monthlySalary:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Lpl/mkrstudio/truefootball3/objects/Country;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->nationality:Lpl/mkrstudio/truefootball3/objects/Country;

    return-object v0
.end method

.method public getSkill()B
    .locals 1

    .line 48
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->skill:B

    return v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;
    .locals 1

    .line 60
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->type:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    return-object v0
.end method

.method public setAge(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "age"
        }
    .end annotation

    .line 39
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->age:B

    return-void
.end method

.method public setExperience(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experience"
        }
    .end annotation

    .line 45
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->experience:B

    return-void
.end method

.method public setMonthlySalary(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlySalary"
        }
    .end annotation

    .line 57
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->monthlySalary:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->name:Ljava/lang/String;

    return-void
.end method

.method public setNationality(Lpl/mkrstudio/truefootball3/objects/Country;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationality"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->nationality:Lpl/mkrstudio/truefootball3/objects/Country;

    return-void
.end method

.method public setSkill(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 51
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->skill:B

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/EmployeeType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Employee;->type:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    return-void
.end method
