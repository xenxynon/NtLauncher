.class final Ll6/t$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/t;-><init>(Lkotlinx/coroutines/flow/f;Lq5/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/p<",
        "Ljava/lang/Integer;",
        "Lq5/g$b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ll6/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll6/t$a;

    invoke-direct {v0}, Ll6/t$a;-><init>()V

    sput-object v0, Ll6/t$a;->g:Ll6/t$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILq5/g$b;)Ljava/lang/Integer;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lq5/g$b;

    invoke-virtual {p0, p1, p2}, Ll6/t$a;->a(ILq5/g$b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
