.class public final synthetic Lcom/android/launcher3/model/data/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/data/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/data/f;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/f;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/data/f;->a:Lcom/android/launcher3/model/data/f;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->a(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object p0

    return-object p0
.end method
