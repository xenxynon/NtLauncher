.class public final Lz2/c$b;
.super Lz2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final g:Lz2/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/c$b;

    invoke-direct {v0}, Lz2/c$b;-><init>()V

    sput-object v0, Lz2/c$b;->g:Lz2/c$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const-string v1, "Android"

    const-string v2, "SYSTEM_ICONS"

    const-string v3, "4_by_6"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lz2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/i;)V

    return-void
.end method
