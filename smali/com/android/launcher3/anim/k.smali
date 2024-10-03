.class public final synthetic Lcom/android/launcher3/anim/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/k;

    invoke-direct {v0}, Lcom/android/launcher3/anim/k;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/k;->a:Lcom/android/launcher3/anim/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgress(FF)F
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->a(FF)F

    move-result p0

    return p0
.end method
