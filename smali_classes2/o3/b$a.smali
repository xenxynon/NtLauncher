.class final Lo3/b$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lo3/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lo3/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/b$a;

    invoke-direct {v0}, Lo3/b$a;-><init>()V

    sput-object v0, Lo3/b$a;->g:Lo3/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo3/b;
    .locals 1

    new-instance p0, Lo3/b;

    sget-object v0, Lo3/c;->a:Lo3/c;

    invoke-virtual {v0}, Lo3/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo3/b;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo3/b$a;->a()Lo3/b;

    move-result-object p0

    return-object p0
.end method
