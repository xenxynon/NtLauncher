.class final Le2/u$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/u;->E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedViewGroup"
    f = "SimulatedViewGroup.kt"
    l = {
        0x25
    }
    m = "setLayoutAnimation"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Le2/u;

.field i:I


# direct methods
.method constructor <init>(Le2/u;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/u;",
            "Lq5/d<",
            "-",
            "Le2/u$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/u$b;->h:Le2/u;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/u$b;->g:Ljava/lang/Object;

    iget p1, p0, Le2/u$b;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/u$b;->i:I

    iget-object p1, p0, Le2/u$b;->h:Le2/u;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Le2/u;->C(Le2/u;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method