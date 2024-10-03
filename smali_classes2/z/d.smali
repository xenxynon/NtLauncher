.class public final synthetic Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lz/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lz/d;

    invoke-direct {v0}, Lz/d;-><init>()V

    sput-object v0, Lz/d;->a:Lz/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->k(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
