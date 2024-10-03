.class public abstract Li6/c2;
.super Li6/d0;
.source "SourceFile"

# interfaces
.implements Li6/c1;
.implements Li6/q1;


# instance fields
.field public j:Li6/d2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Li6/d2;
    .locals 0

    iget-object p0, p0, Li6/c2;->j:Li6/d2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "job"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final B(Li6/d2;)V
    .locals 0

    iput-object p1, p0, Li6/c2;->j:Li6/d2;

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()Li6/h2;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Li6/d2;->A0(Li6/c2;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li6/q0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    invoke-static {p0}, Li6/q0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
