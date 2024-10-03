.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/bubbles/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/o;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/bubbles/o;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/o;->a:Lcom/android/launcher3/taskbar/bubbles/o;

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

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p0

    return-object p0
.end method
