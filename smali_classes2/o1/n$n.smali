.class final Lo1/n$n;
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
        "Ljava/net/URI;",
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

    invoke-virtual {p0, p1}, Lo1/n$n;->e(Ls1/a;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lo1/n$n;->f(Ls1/c;Ljava/net/URI;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p1}, Ls1/a;->F()Ls1/b;

    move-result-object p0

    sget-object v0, Ls1/b;->o:Ls1/b;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls1/a;->B()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ls1/a;->D()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ll1/k;

    invoke-direct {p1, p0}, Ll1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public f(Ls1/c;Ljava/net/URI;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ls1/c;->I(Ljava/lang/String;)Ls1/c;

    return-void
.end method
