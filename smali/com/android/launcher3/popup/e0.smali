.class public final synthetic Lcom/android/launcher3/popup/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/popup/e0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/e0;

    invoke-direct {v0}, Lcom/android/launcher3/popup/e0;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/e0;->g:Lcom/android/launcher3/popup/e0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut;->j(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
