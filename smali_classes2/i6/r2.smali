.class public final Li6/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li6/v1;)Li6/z;
    .locals 1

    new-instance v0, Li6/q2;

    invoke-direct {v0, p0}, Li6/q2;-><init>(Li6/v1;)V

    return-object v0
.end method

.method public static synthetic b(Li6/v1;ILjava/lang/Object;)Li6/z;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Li6/r2;->a(Li6/v1;)Li6/z;

    move-result-object p0

    return-object p0
.end method
