.class final Li6/h0$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6/h0;->a(Lq5/g;Lq5/g;Z)Lq5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/p<",
        "Lq5/g;",
        "Lq5/g$b;",
        "Lq5/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lkotlin/jvm/internal/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/a0<",
            "Lq5/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/a0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/a0<",
            "Lq5/g;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Li6/h0$b;->g:Lkotlin/jvm/internal/a0;

    iput-boolean p2, p0, Li6/h0$b;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lq5/g;Lq5/g$b;)Lq5/g;
    .locals 3

    instance-of v0, p2, Li6/g0;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Li6/h0$b;->g:Lkotlin/jvm/internal/a0;

    iget-object v0, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast v0, Lq5/g;

    invoke-interface {p2}, Lq5/g$b;->getKey()Lq5/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Li6/h0$b;->h:Z

    if-eqz p0, :cond_1

    check-cast p2, Li6/g0;

    invoke-interface {p2}, Li6/g0;->r()Li6/g0;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p2

    check-cast p0, Li6/g0;

    :goto_0
    invoke-interface {p1, p0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Li6/h0$b;->g:Lkotlin/jvm/internal/a0;

    iget-object v1, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast v1, Lq5/g;

    invoke-interface {p2}, Lq5/g$b;->getKey()Lq5/g$c;

    move-result-object v2

    invoke-interface {v1, v2}, Lq5/g;->minusKey(Lq5/g$c;)Lq5/g;

    move-result-object v1

    iput-object v1, p0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p2, Li6/g0;

    invoke-interface {p2, v0}, Li6/g0;->F(Lq5/g$b;)Lq5/g;

    move-result-object p0

    invoke-interface {p1, p0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/g;

    check-cast p2, Lq5/g$b;

    invoke-virtual {p0, p1, p2}, Li6/h0$b;->a(Lq5/g;Lq5/g$b;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
