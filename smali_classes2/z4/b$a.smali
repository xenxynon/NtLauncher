.class final Lz4/b$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lz4/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/b$a;

    invoke-direct {v0}, Lz4/b$a;-><init>()V

    sput-object v0, Lz4/b$a;->g:Lz4/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    sget-object p0, Lz4/b;->a:Lz4/b;

    sget-object v0, Lo3/c;->a:Lo3/c;

    invoke-virtual {v0}, Lo3/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lz4/b;->a(Lz4/b;Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz4/b$a;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method