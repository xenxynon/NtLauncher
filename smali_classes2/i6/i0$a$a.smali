.class final Li6/i0$a$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li6/i0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lq5/g$b;",
        "Li6/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Li6/i0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/i0$a$a;

    invoke-direct {v0}, Li6/i0$a$a;-><init>()V

    sput-object v0, Li6/i0$a$a;->g:Li6/i0$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lq5/g$b;)Li6/i0;
    .locals 0

    instance-of p0, p1, Li6/i0;

    if-eqz p0, :cond_0

    check-cast p1, Li6/i0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq5/g$b;

    invoke-virtual {p0, p1}, Li6/i0$a$a;->a(Lq5/g$b;)Li6/i0;

    move-result-object p0

    return-object p0
.end method
