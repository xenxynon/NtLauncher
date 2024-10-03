.class final Lo2/b$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Li6/m0;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lo2/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo2/b$b;

    invoke-direct {v0}, Lo2/b$b;-><init>()V

    sput-object v0, Lo2/b$b;->g:Lo2/b$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Li6/m0;
    .locals 2

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object p0

    invoke-virtual {p0}, Li6/g2;->k()Li6/g2;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq5/a;->plus(Lq5/g;)Lq5/g;

    move-result-object p0

    invoke-static {p0}, Li6/n0;->a(Lq5/g;)Li6/m0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo2/b$b;->a()Li6/m0;

    move-result-object p0

    return-object p0
.end method
