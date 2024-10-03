.class public final synthetic Lcom/android/launcher3/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/m1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/m1;

    invoke-direct {v0}, Lcom/android/launcher3/m1;-><init>()V

    sput-object v0, Lcom/android/launcher3/m1;->a:Lcom/android/launcher3/m1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/Launcher;->G(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
