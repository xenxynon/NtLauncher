.class public abstract Lc6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/c$a;
    }
.end annotation


# static fields
.field public static final g:Lc6/c$a;

.field private static final h:Lc6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc6/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc6/c$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc6/c;->g:Lc6/c$a;

    sget-object v0, Ls5/b;->a:Ls5/a;

    invoke-virtual {v0}, Ls5/a;->b()Lc6/c;

    move-result-object v0

    sput-object v0, Lc6/c;->h:Lc6/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lc6/c;
    .locals 1

    sget-object v0, Lc6/c;->h:Lc6/c;

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method
