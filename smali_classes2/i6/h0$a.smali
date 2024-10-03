.class final Li6/h0$a;
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


# static fields
.field public static final g:Li6/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/h0$a;

    invoke-direct {v0}, Li6/h0$a;-><init>()V

    sput-object v0, Li6/h0$a;->g:Li6/h0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lq5/g;Lq5/g$b;)Lq5/g;
    .locals 0

    instance-of p0, p2, Li6/g0;

    if-eqz p0, :cond_0

    check-cast p2, Li6/g0;

    invoke-interface {p2}, Li6/g0;->r()Li6/g0;

    move-result-object p0

    invoke-interface {p1, p0}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1, p2}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/g;

    check-cast p2, Lq5/g$b;

    invoke-virtual {p0, p1, p2}, Li6/h0$a;->a(Lq5/g;Lq5/g$b;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
