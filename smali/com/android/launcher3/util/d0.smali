.class public final synthetic Lcom/android/launcher3/util/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/d0;->a:Ljava/lang/Class;

    iput p2, p0, Lcom/android/launcher3/util/d0;->b:I

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/d0;->a:Ljava/lang/Class;

    iget p0, p0, Lcom/android/launcher3/util/d0;->b:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method
