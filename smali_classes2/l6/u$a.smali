.class final synthetic Ll6/u$a;
.super Lkotlin/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll6/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final g:Ll6/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll6/u$a;

    invoke-direct {v0}, Ll6/u$a;-><init>()V

    sput-object v0, Ll6/u$a;->g:Ll6/u$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lkotlinx/coroutines/flow/f;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p3, Lq5/d;

    invoke-virtual {p0, p1, p2, p3}, Ll6/u$a;->b(Lkotlinx/coroutines/flow/f;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
