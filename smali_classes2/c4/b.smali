.class public final Lc4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/b$a;
    }
.end annotation


# static fields
.field public static final b:Lc4/b$a;


# instance fields
.field private final a:Lc4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc4/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc4/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc4/b;->b:Lc4/b$a;

    return-void
.end method

.method public constructor <init>(ZLandroid/database/sqlite/SQLiteDatabase;ILandroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7

    const-string v0, "db"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcSize"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc4/a;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc4/a;-><init>(ZLandroid/database/sqlite/SQLiteDatabase;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v0, p0, Lc4/b;->a:Lc4/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lc4/b;->a:Lc4/a;

    invoke-virtual {p0}, Lc4/a;->i()V

    return-void
.end method
