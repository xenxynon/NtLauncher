.class public final synthetic Lcom/android/quickstep/util/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/util/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/u;

    invoke-direct {v0}, Lcom/android/quickstep/util/u;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/u;->a:Lcom/android/quickstep/util/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/quickstep/util/ImageActionUtils;->h(Landroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
