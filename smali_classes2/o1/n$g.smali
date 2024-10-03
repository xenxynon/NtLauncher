.class final Lo1/n$g;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/n$g;->e(Ls1/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo1/n$g;->f(Ls1/c;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object p0

    sget-object v0, Ls1/b;->o:Ls1/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ls1/b;->n:Ls1/b;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Ls1/a;->u()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls1/a;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Ls1/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ls1/c;->I(Ljava/lang/String;)Ls1/c;

    return-void
.end method
