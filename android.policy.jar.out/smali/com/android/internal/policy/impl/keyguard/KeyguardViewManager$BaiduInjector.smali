.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$BaiduInjector;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNoLimitsFlag(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .locals 1
    .parameter "keyguardViewManager"

    .prologue
    .line 566
    const v0, 0x110b00

    .line 569
    .local v0, flags:I
    return v0
.end method

.method public static sendBroadcast(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)V
    .locals 3
    .parameter "keyguardViewManager"
    .parameter "show"

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.statusbar.ACTION_TRANSPARENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    const-string v1, "transparent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    const-string v1, "reason"

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 563
    return-void
.end method
