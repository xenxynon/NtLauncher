.class public final synthetic Lcom/android/launcher3/popup/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/popup/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/f;

    invoke-direct {v0}, Lcom/android/launcher3/popup/f;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/f;->a:Lcom/android/launcher3/popup/f;

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

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->d(Lcom/android/launcher3/popup/SystemShortcut;)Z

    move-result p0

    return p0
.end method
