.class final Ll1/e$c;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/e;->o(Ll1/s;)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/lang/Number;",
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

    invoke-virtual {p0, p1}, Ll1/e$c;->e(Ls1/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ll1/e$c;->f(Ls1/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object p0

    sget-object v0, Ls1/b;->o:Ls1/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls1/a;->y()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public f(Ls1/c;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ls1/c;->u()Ls1/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls1/c;->I(Ljava/lang/String;)Ls1/c;

    return-void
.end method
