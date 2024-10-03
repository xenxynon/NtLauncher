.class public final synthetic Lcom/android/launcher3/util/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/util/p0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/p0;

    invoke-direct {v0}, Lcom/android/launcher3/util/p0;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/p0;->g:Lcom/android/launcher3/util/p0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;

    invoke-interface {p1}, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;->onUserPresent()V

    return-void
.end method
