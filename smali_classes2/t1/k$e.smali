.class public abstract Lt1/k$e;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lt1/k$e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/k<",
        "TMessageType;TBuilderType;>;",
        "Lt1/s;"
    }
.end annotation


# instance fields
.field protected g:Lt1/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/j<",
            "Lt1/k$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    invoke-static {}, Lt1/j;->i()Lt1/j;

    move-result-object v0

    iput-object v0, p0, Lt1/k$e;->g:Lt1/j;

    return-void
.end method


# virtual methods
.method final a(Lt1/k$j;Lt1/k$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/k$j;",
            "TMessageType;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lt1/k;->visit(Lt1/k$j;Lt1/k;)V

    iget-object v0, p0, Lt1/k$e;->g:Lt1/j;

    iget-object p2, p2, Lt1/k$e;->g:Lt1/j;

    invoke-interface {p1, v0, p2}, Lt1/k$j;->g(Lt1/j;Lt1/j;)Lt1/j;

    move-result-object p1

    iput-object p1, p0, Lt1/k$e;->g:Lt1/j;

    return-void
.end method

.method public bridge synthetic getDefaultInstanceForType()Lt1/r;
    .locals 0

    invoke-super {p0}, Lt1/k;->getDefaultInstanceForType()Lt1/k;

    move-result-object p0

    return-object p0
.end method

.method protected final makeImmutable()V
    .locals 0

    invoke-super {p0}, Lt1/k;->makeImmutable()V

    iget-object p0, p0, Lt1/k$e;->g:Lt1/j;

    invoke-virtual {p0}, Lt1/j;->f()V

    return-void
.end method

.method public bridge synthetic toBuilder()Lt1/r$a;
    .locals 0

    invoke-super {p0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic visit(Lt1/k$j;Lt1/k;)V
    .locals 0

    check-cast p2, Lt1/k$e;

    invoke-virtual {p0, p1, p2}, Lt1/k$e;->a(Lt1/k$j;Lt1/k$e;)V

    return-void
.end method
