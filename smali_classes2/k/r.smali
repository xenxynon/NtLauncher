.class public final synthetic Lk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lk/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/r;

    invoke-direct {v0}, Lk/r;-><init>()V

    sput-object v0, Lk/r;->a:Lk/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/launcher3/icons/IconCache;->c()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method
