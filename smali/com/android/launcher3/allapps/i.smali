.class public final synthetic Lcom/android/launcher3/allapps/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/allapps/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/i;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/i;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/i;->a:Lcom/android/launcher3/allapps/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->j(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method
