.class public final Li6/u;
.super Li6/x1;
.source "SourceFile"

# interfaces
.implements Li6/t;


# instance fields
.field public final k:Li6/v;


# direct methods
.method public constructor <init>(Li6/v;)V
    .locals 0

    invoke-direct {p0}, Li6/x1;-><init>()V

    iput-object p1, p0, Li6/u;->k:Li6/v;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    invoke-virtual {p0, p1}, Li6/d2;->U(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getParent()Li6/v1;
    .locals 0

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/u;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Li6/u;->k:Li6/v;

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    invoke-interface {p1, p0}, Li6/v;->l(Li6/k2;)V

    return-void
.end method
