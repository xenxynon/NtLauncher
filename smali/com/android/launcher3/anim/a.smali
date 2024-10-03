.class public final synthetic Lcom/android/launcher3/anim/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/anim/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/a;

    invoke-direct {v0}, Lcom/android/launcher3/anim/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/a;->g:Lcom/android/launcher3/anim/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/anim/AnimatedFloat;->a()V

    return-void
.end method
